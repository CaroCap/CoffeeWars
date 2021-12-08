<?php

class Reponse {

    public int $id;
    public string $intitule_reponse;
    public int $ID_question;
    public bool $resultat;

    public function __construct(array $vals)
    {
        $this->hydrate($vals);
    }

    public function hydrate (array $vals){
        foreach ($vals as $nomPropriete => $valeurPropriete) {
            if (isset($vals[$nomPropriete])) {
                // donner une valeur `a la proprieté
                $this->$nomPropriete = $valeurPropriete;
            } 
        }
    }

    /**
     * Get the value of id
     */ 
    public function getid()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setid($id)
    {
        $this->id = $id;

        return $this;
    }
    

    /**
     * Get the value of intitule_reponse
     */ 
    public function getIntitule_reponse()
    {
        return $this->intitule_reponse;
    }

    /**
     * Set the value of intitule_reponse
     *
     * @return  self
     */ 
    public function setIntitule_reponse($intitule_reponse)
    {
        $this->intitule_reponse = $intitule_reponse;

        return $this;
    }

    /**
     * Get the value of ID_question
     */ 
    public function getID_question()
    {
        return $this->ID_question;
    }

    /**
     * Set the value of ID_question
     *
     * @return  self
     */ 
    public function setID_question($ID_question)
    {
        $this->ID_question = $ID_question;

        return $this;
    }

    /**
     * Get the value of resultat
     */ 
    public function getResultat()
    {
        return $this->resultat;
    }

    /**
     * Set the value of resultat
     *
     * @return  self
     */ 
    public function setResultat($resultat)
    {
        $this->resultat = $resultat;

        return $this;
    }
}