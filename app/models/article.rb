class Article < ApplicationRecord
	validates :contents, 
	presence: { message:"ツイートの欄が空です"},
	length: { maximum:140, message: "140文字以下にして下さい。コメントはコメント欄に書いてください"	}

	mount_uploader :image, ImageUploader
end
