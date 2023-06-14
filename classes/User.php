<?php


class User
{
    private $db;

    //deze dient
    public function __construct($db)
    {
        $this->db = $db;
    }

    //deze functie haalt alle users op uit de database
    public function getAllUsers()
    {
        $query = "SELECT * FROM users";
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    //deze functie verwijdert een user uit de database
    public function deleteUser($userId)
    {
        $query = "DELETE FROM users WHERE id = :id";
        $stmt = $this->db->prepare($query);
        $stmt->bindParam(':id', $userId);
        $stmt->execute();
    }
}

