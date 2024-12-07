﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace EFBancoAPI.Data.Models;

public partial class BancoDbContext : DbContext
{
    public BancoDbContext(DbContextOptions<BancoDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Cliente> Clientes { get; set; }

    public virtual DbSet<Cuenta> Cuenta { get; set; }

    public virtual DbSet<TipoCuenta> TipoCuenta { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Cliente>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Cliente__3214EC2715552F0F");

            entity.ToTable("Cliente");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Apellido)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("APELLIDO");
            entity.Property(e => e.Dni)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("DNI");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("NOMBRE");
        });

        modelBuilder.Entity<Cuenta>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__CUENTA__3214EC27F3CB2781");

            entity.ToTable("CUENTA");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Cbu)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("CBU");
            entity.Property(e => e.ClienteId).HasColumnName("CLIENTE_ID");
            entity.Property(e => e.FechaBaja)
                .HasColumnType("datetime")
                .HasColumnName("FECHA_BAJA");
            entity.Property(e => e.MotivoBaja)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("MOTIVO_BAJA");
            entity.Property(e => e.Saldo)
                .HasColumnType("decimal(18, 2)")
                .HasColumnName("SALDO");
            entity.Property(e => e.TipoCuentaId).HasColumnName("TIPO_CUENTA_ID");
            entity.Property(e => e.UltimoMovimiento)
                .HasColumnType("datetime")
                .HasColumnName("ULTIMO_MOVIMIENTO");

            entity.HasOne(d => d.Cliente).WithMany(p => p.Cuenta)
                .HasForeignKey(d => d.ClienteId)
                .HasConstraintName("FK__CUENTA__CLIENTE___4D94879B");

            entity.HasOne(d => d.TipoCuenta).WithMany(p => p.Cuenta)
                .HasForeignKey(d => d.TipoCuentaId)
                .HasConstraintName("FK__CUENTA__TIPO_CUE__4E88ABD4");
        });

        modelBuilder.Entity<TipoCuenta>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__TIPO_CUE__3214EC27F7B5730E");

            entity.ToTable("TIPO_CUENTA");

            entity.Property(e => e.Id).HasColumnName("ID");
            entity.Property(e => e.Nombre)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("NOMBRE");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}