﻿import React from 'react';

export class FetchProCat extends React.Component {
    static displayName = FetchProCat.name;

    constructor(props) {
        super(props);
        this.state = { categories: [], loading: true };
    }

    componentDidMount() {
        this.populateCategories();
    }

    static renderCategoryTable(categories) {
        return (
            <table className='table table-striped' aria-labelledby="tabelLabel">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Category Name</th>
                        <th>Available</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    {categories.map(category =>
                        <tr key={category.cat_id}>
                            <td>{category.cat_id}</td>
                            <td>{category.cat_nm}</td>
                            <td>{category.a_ia}</td>
                            <td>{category.description}</td>
                        </tr>
                    )}
                </tbody>
            </table>
        );
    }

    render() {
        let contents = this.state.loading
            ? <p><em>Loading...</em></p>
            : FetchProCat.renderCategoryTable(this.state.categories);

        return (
            <div>
                <h1 id="tabelLabel" >Product Categories</h1>
                <p>This component demonstrates fetching data from the server.</p>
                {contents}
            </div>
        );
    }

    async populateCategories() {
        const response = await fetch('localhost:7890/product_rest_api/api/Pro_category');
        const data = await response.json();
        this.setState({ categories: data, loading: false });
    }
    
}