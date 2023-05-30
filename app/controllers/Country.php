<?php

class Country extends BaseController
{
    private $countryModel;

    public function __construct()
    {
        $this->countryModel = $this->model('CountryModel');
    }

    public function index()
    {
        $data = [
            'title' => 'Mijn eerste view'
        ];

        $this->view('country/index', $data);
    }


    public function getCountries($id1=NULL, $id2=NULL) 
    {
        $countries = $this->countryModel->getCountries();

        $tableRows = "";
        foreach ($countries as $value) {
            $tableRows .= "<tr>
                                <td>$value->Id</td>
                                <td>$value->Name</td>
                           </tr>";
        }

        $data = [
            'title' => 'Overzicht landen van Europa',
            'tableRows' => $tableRows
        ];

        $this->view('country/getCountries', $data);
    }
}