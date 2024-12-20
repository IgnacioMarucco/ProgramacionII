﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DataAPI.Data.Models;

public partial class PeluqueriaDbContext : DbContext
{
    public PeluqueriaDbContext(DbContextOptions<PeluqueriaDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<TDetallesTurno> TDetallesTurnos { get; set; }

    public virtual DbSet<TServicio> TServicios { get; set; }

    public virtual DbSet<TTurno> TTurnos { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        //!!!!!!!!!!!!!!!!!!!!
        modelBuilder.Entity<TTurno>().Navigation(t => t.TDetallesTurnos).AutoInclude();
        modelBuilder.Entity<TDetallesTurno>().Navigation(d => d.IdServicioNavigation).AutoInclude();

        modelBuilder.Entity<TDetallesTurno>(entity =>
        {
            entity.HasKey(e => new { e.IdTurno, e.IdServicio });

            entity.ToTable("T_DETALLES_TURNO");

            entity.Property(e => e.IdTurno).HasColumnName("id_turno");
            entity.Property(e => e.IdServicio).HasColumnName("id_servicio");
            entity.Property(e => e.Observaciones)
                .HasMaxLength(200)
                .IsUnicode(false)
                .HasColumnName("observaciones");

            entity.HasOne(d => d.IdServicioNavigation).WithMany(p => p.TDetallesTurnos)
                .HasForeignKey(d => d.IdServicio)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_T_DETALLES_TURNO_T_SERVICIOS");

            entity.HasOne(d => d.IdTurnoNavigation).WithMany(p => p.TDetallesTurnos)
                .HasForeignKey(d => d.IdTurno)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_T_DETALLES_TURNO_T_TURNOS");
        });

        modelBuilder.Entity<TServicio>(entity =>
        {
            entity.ToTable("T_SERVICIOS");

            entity.Property(e => e.Id)
                .ValueGeneratedNever()
                .HasColumnName("id");
            entity.Property(e => e.Costo).HasColumnName("costo");
            entity.Property(e => e.EnPromocion)
                .IsRequired()
                .HasMaxLength(1)
                .IsUnicode(false)
                .HasColumnName("enPromocion");
            entity.Property(e => e.FechaCancelacion)
                .HasColumnType("datetime")
                .HasColumnName("fecha_cancelacion");
            entity.Property(e => e.MotivoCancelacion)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("motivo_cancelacion");
            entity.Property(e => e.Nombre)
                .IsRequired()
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nombre");
        });

        modelBuilder.Entity<TTurno>(entity =>
        {
            entity.ToTable("T_TURNOS");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Cliente)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("cliente");
            entity.Property(e => e.Fecha)
                .HasColumnType("datetime")
                .HasColumnName("fecha");
            entity.Property(e => e.FechaBaja)
                .HasColumnType("datetime")
                .HasColumnName("fecha_baja");
            entity.Property(e => e.MotivoBaja)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("motivo_baja");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}