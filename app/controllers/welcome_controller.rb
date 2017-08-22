class WelcomeController < ApplicationController
  def index
  end

  def bares
  end

  def ubicacion
    @locations = Location.all
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.infowindow location.description
      marker.json({ title: location.title})
    end
  end

  def galeria
    @galeria = Galerium.all
  end

  def contacto
  end

  def informacion
    @locations = Location.all
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.infowindow location.description
      marker.json({ title: location.title})
    end
  end

  def promociones
    @promociones = Promocione.all
  end

  def eventos
    @events = Event.all
  end

  def compras
  end

  def vestimenta
    @vestimenta = Vestimentum.all
  end


  def ofreces
    if params[:tipo]
      @ofreces = Ofrece.where tipo: params[:tipo]
    else
      @ofreces = Ofrece.all
    end
  end

  def reservas
    @reservas = Reserva.all
  end


end
