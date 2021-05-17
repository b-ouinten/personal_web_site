class PdfsController < ApplicationController
  def download_my_resume
    send_file(
      "#{Rails.root}/public/my_resume.pdf",
      filename: "Wazo's resume.pdf",
      type: "application/pdf"
    )
  end
end
