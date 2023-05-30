<?php

class Voetballer extends BaseController
{
    private $voetbalModel;

    public function __construct()
    {
        $this->voetbalModel = $this->model('VoetballerModel');
    }

    public function index()
    {
        $result = $this->voetbalModel->getVoetballers();

        // var_dump($result);

        $rows = "";
        foreach ($result as $voetballer) {
            $rows .= "<tr>
                        <td>$voetballer->Naam</td>
                        <td>$voetballer->Club</td>
                        <td>$voetballer->Leeftijd</td>
                        <td>$voetballer->Nationaliteit</td>
                        <td>$voetballer->Salaris</td>            
                      </tr>";
        }
        
        $data = [
            'title' => 'Top 5 best betaalde voetballers ter wereld',
            'rows' => $rows
        ];

        $this->view('voetballer/voetballer', $data);
    }
}