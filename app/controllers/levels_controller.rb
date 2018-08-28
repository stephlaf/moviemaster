class LevelsController < ApplicationController
  def show
    @level = Level.find_by(number: 2)
  end

  def download_pdf
    # send_file(
    #   "#{Rails.root}/public/sw_movie_notes.pdf",
    #   filename: "sw_movie_notes.pdf",
    #   type: "application/pdf"
    # )
    pdf_filename = File.join(Rails.root, "public/sw_movie_notes.pdf")
    send_file(pdf_filename, :filename => "sw_movie_notes.pdf", :disposition => 'inline', :type => "application/pdf")

  end
end
