class PdfsController < ApplicationController
  def download_my_resume
    send_file(
      "#{Rails.root}/public/my_resume.pdf",
      filename: "OB's resume.pdf",
      type: "application/pdf"
    )
  end
end
