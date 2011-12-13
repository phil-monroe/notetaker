class SubnotesController < ApplicationController
  def create
    @subnote = Subnote.new(params[:subnote])
    @subnote.save!
    redirect_to edit_note_path @subnote.note
  end

  def update
    @subnote = Subnote.find(params[:subnote_id])
    @subnote.attributes(params[:subnote])
    @subnote.save!
  end

  def destroy
    @note = Subnote.find(params[:subnote_id])
    @note.destroy
  end

end
