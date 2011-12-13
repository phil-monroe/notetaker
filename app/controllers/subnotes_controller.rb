class SubnotesController < ApplicationController
  def create
    @subnote = Subnote.new(params[:subnote])
    @subnote.save!
    redirect_to edit_note_path @subnote.note
  end

  def update
    @subnote = Subnote.find(params[:id])
    respond_to do |format|
      if @subnote.update_attributes(params[:subnote])
        format.json { respond_with_bip(@subnote) }
      else
        format.json { respond_with_bip(@subnote) }
      end
    end
  end

  def destroy
    @note = Subnote.find(params[:id])
    @note.destroy
  end

end
