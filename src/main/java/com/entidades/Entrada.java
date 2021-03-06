package com.entidades;

import com.clases.Carta;
import com.conexion.Conexion;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

// Clase base de cuentas de usuario
public class Entrada {
    
    // Atributos para conexion con base de datos
    Connection conn;
    Statement stmt;
    PreparedStatement pStmt;
    private int idApadrinado;
    private String nivelEscolar;
    private float peso;
    private float IMC;
    private float estatura;
    private Date fechaEntrada;
    private String carta;
    
    // Metodo constructor con conexion
    public Entrada(Conexion connect){
        this.conn = connect.conn;
        this.stmt = connect.stmt;
    }
    
    
    
    public Entrada (int idApadrinado,String nivelEscolar,float peso,
            float IMC, float estatura, Date fechaEntrada, String carta){
        
        this.idApadrinado = idApadrinado;
        this.nivelEscolar = nivelEscolar;
        this.peso = peso;
        this.IMC = IMC;
        this.estatura = estatura;
        this.fechaEntrada = fechaEntrada;
        this.carta = carta;
        
        
    }
    
    
    
    
    //CREAR CUENTAS NUEVAS
    public void nuevaEntrada(int idApadrinado,String nivelEscolar,float peso,
            float IMC, float estatura, Date fechaEntrada, String carta){
        
        
        try{
            pStmt = conn.prepareStatement(
                    "INSERT INTO entrada (idApadrinado,nivelEscolar,peso,"
                            + "IMC,estatura,fechaEntrada,carta)" +
                            " VALUES (?, ?, ?, ?, ?, ?, ?)");
            pStmt.setInt(1,idApadrinado);
            pStmt.setString(2,nivelEscolar);
            pStmt.setFloat(3,peso);
            pStmt.setFloat(4,IMC);
            pStmt.setFloat(5,estatura);
            pStmt.setDate(6,new java.sql.Date(fechaEntrada.getTime()));
            pStmt.setString(7,carta);
            pStmt.executeUpdate();
            
            
        }
        catch(SQLException e){
            
        }
        
        
        
    }
    
    //CREAR CUENTAS NUEVAS
    public ArrayList<Entrada> obtenerEntradas(int idApadrinado){
        
        ArrayList<Entrada> entradas = new ArrayList<Entrada>();
        
        try{
            pStmt = conn.prepareStatement(
                    "SELECT nivelEscolar,peso,IMC,estatura,fechaEntrada,carta FROM entrada WHERE idApadrinado = ? ORDER BY fechaEntrada asc");
            pStmt.setInt(1,idApadrinado);
            ResultSet rs = pStmt.executeQuery();
            
            while(rs.next()){
                String nivelEscolar = rs.getString("nivelEscolar");
                float peso = rs.getFloat("peso");
                float IMC = rs.getFloat("IMC");
                float estatura = rs.getFloat("estatura");
                Date fechaEntrada = rs.getDate("fechaEntrada");
                String carta = rs.getString("carta");
                
                Entrada entrada = new Entrada(idApadrinado,nivelEscolar,peso,IMC,estatura,fechaEntrada,carta);
                entradas.add(entrada);
                
            }
            return entradas;
            
            
            
            
        }
        catch(SQLException e){
            return entradas;
            
        }
        
        
        
    }
    
    public ArrayList<Carta> obtenerCartas(int offset,int num,int idApadrinado){
        
        ArrayList<Carta> cartas = new ArrayList<Carta>();
        
        try{
            pStmt = conn.prepareStatement(
                    "SELECT fechaEntrada,carta FROM entrada WHERE idApadrinado = ? ORDER BY fechaEntrada desc LIMIT ?,?");
            pStmt.setInt(1,idApadrinado);
            pStmt.setInt(2, offset);
            pStmt.setInt(3, num);
            ResultSet rs = pStmt.executeQuery();
            
            while(rs.next()){
                
                Date fechaEntrada = rs.getDate("fechaEntrada");
                String carta = rs.getString("carta");
                
                //convierto la fecha
                Locale fechaLocal = new Locale.Builder().setLanguage("es").setRegion("MX").build();
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd",fechaLocal);
                Date d = fechaEntrada;
                sdf.applyPattern("EEE d 'de' MMMM 'de' yyyy");
                String sFechaEntrada = sdf.format(d);
                
                Carta unacarta = new Carta(sFechaEntrada,carta);
                cartas.add(unacarta);
                
                
                
            }
            return cartas;
            
            
            
            
        }
        catch(SQLException e){
            return null;
            
        }
        
    }
    
    //Se obtienen numero de notas
    public int getNumCartas(int idApadrinado){
        
        int numCartas;
        
        
        try{
            pStmt = conn.prepareStatement(
                    "SELECT COUNT(*) FROM entrada WHERE idApadrinado = ?");
            pStmt.setInt(1,idApadrinado);
            ResultSet rs = pStmt.executeQuery();
            if(rs.next()){
                numCartas = rs.getInt(1);
                return numCartas;
            }
            
            return -1;
        }
        catch(SQLException e){
            return -1;
        }
        
        
        
    }
    
    /**
     * @return the idApadrinado
     */
    public int getIdApadrinado() {
        return idApadrinado;
    }
    
    /**
     * @param idApadrinado the idApadrinado to set
     */
    public void setIdApadrinado(int idApadrinado) {
        this.idApadrinado = idApadrinado;
    }
    
    /**
     * @return the nivelEscolar
     */
    public String getNivelEscolar() {
        return nivelEscolar;
    }
    
    /**
     * @param nivelEscolar the nivelEscolar to set
     */
    public void setNivelEscolar(String nivelEscolar) {
        this.nivelEscolar = nivelEscolar;
    }
    
    /**
     * @return the peso
     */
    public float getPeso() {
        return peso;
    }
    
    /**
     * @param peso the peso to set
     */
    public void setPeso(float peso) {
        this.peso = peso;
    }
    
    /**
     * @return the IMC
     */
    public float getIMC() {
        return IMC;
    }
    
    /**
     * @param IMC the IMC to set
     */
    public void setIMC(float IMC) {
        this.IMC = IMC;
    }
    
    /**
     * @return the estatura
     */
    public float getEstatura() {
        return estatura;
    }
    
    /**
     * @param estatura the estatura to set
     */
    public void setEstatura(float estatura) {
        this.estatura = estatura;
    }
    
    /**
     * @return the fechaEntrada
     */
    public Date getFechaEntrada() {
        return fechaEntrada;
    }
    
    /**
     * @param fechaEntrada the fechaEntrada to set
     */
    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }
    
    /**
     * @return the carta
     */
    public String getCarta() {
        return carta;
    }
    
    /**
     * @param carta the carta to set
     */
    public void setCarta(String carta) {
        this.carta = carta;
    }
    
    
    
    
    
}

