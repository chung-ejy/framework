import React, { useContext,useState } from 'react'
import DataContext from '../../context/data/dataContext'

const Form = ({data}) => {
    const dataContext = useContext(DataContext)
    const {getData} = dataContext
    const [state,setState] = useState({title:"",text:""})
    const onChange = (e) => {
        setState({...state,[e.target.name]:e.target.value});
    }

    const onSubmit = (e) => {
        e.preventDefault()
        getData(state)
        setState({title:"",text:""})
    }

    const  {title,text} = state;
    return (
        <div className="card card-body mt-4 mb-4">
            <h5 class="card-title text-center mb-1">
                {data.title}
            </h5>
            <table className="table table-responsive-sm">
                <tbody>
                    <tr>
                        <td>data</td>
                        <td>{data.data == 0 ? "Fake" : "Legit"}</td>
                    </tr>
                    <tr>
                        <td>Polarity</td>
                        <td>{data.polarity}</td>
                    </tr>
                    <tr>
                        <td>Subjectivity</td>
                        <td>{data.subjectivity}</td>
                    </tr>
                    <tr>
                        <td>Title Polarity</td>
                        <td>{data.tpolarity}</td>
                    </tr>
                    <tr>
                        <td>Title Subjectivity</td>
                        <td>{data.tsubjectivity}</td>
                    </tr>
                </tbody>
            </table>
            <form onSubmit={onSubmit}>
                <div className="form-group">
                    <input onChange={onChange} className="form-control" 
                    name="title" placeholder="headline" type="text" value={title} />
                </div>
                <div className="form-group">
                <input onChange={onChange} className="form-control" 
                    name="text" placeholder="article text" type="text" value={text} />
                </div>
                <div className="form-group">
                    <button type="submit" class="btn btn-primary form-control">Classify</button>
                </div>
            </form>
        </div>
    )
}

export default Form
