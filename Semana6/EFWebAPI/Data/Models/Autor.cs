﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace EFWebAPI.Data.Models;

public partial class Autor
{
    public int IdAutor { get; set; }

    public string NombreCompleto { get; set; }

    public string Correo { get; set; }

    public virtual ICollection<Libro> Libros { get; set; } = new List<Libro>();
}