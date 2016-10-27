class CreateBooks < ActiveRecord::Migration[5.0]
  # def change
  #   create_table :books do |t|
  #     t.string :title
  #     t.string :author
  #     t.string :category
  #     t.text :description
  #     t.text :logo_url
  #     t.string :pdf_file_url
  #
  #     t.timestamps
  #   end
  # end

  # def self.up
  #   Books.new(:title => "Java: The Complete Reference", :author => "Herbert Schildt",:category => "Programming",:description => "Fully updated for Java SE 8, Java: The Complete Reference, Ninth Edition explains how to develop, compile, debug, and run Java programs. Bestselling programming author Herb Schildt covers the entire Javalanguage, including its syntax, keywords, and fundamental programming principles, as well as significant portions of the Java API library. JavaBeans, servlets, applets, and Swing are examined and real-world examples demonstrate Java in action. New Java SE 8 features such as lambda expressions, the stream library, and the default interface method are discussed in detail. This Oracle Press resource also offers a solid introduction to JavaFX.",:logo_url => "http://ecx.images-amazon.com/images/I/516CL5AVKVL._SX406_BO1,204,203,200_.jpg",:pdf_file_url => "http://iiti.ac.in/people/~tanimad/JavaTheCompleteReference.pdf")
  # end

  def self.up
      create_table :books do |t|
        t.string :title
        t.string :author
        t.string :category
        t.text :description
        t.text :logo_url
        t.string :pdf_file_url

        t.timestamps
      end
        Books.create(:title => "Java: The Complete Reference", :author => "Herbert Schildt",:category => "Programming",:description => "Fully updated for Java SE 8, Java: The Complete Reference, Ninth Edition explains how to develop, compile, debug, and run Java programs. Bestselling programming author Herb Schildt covers the entire Javalanguage, including its syntax, keywords, and fundamental programming principles, as well as significant portions of the Java API library. JavaBeans, servlets, applets, and Swing are examined and real-world examples demonstrate Java in action. New Java SE 8 features such as lambda expressions, the stream library, and the default interface method are discussed in detail. This Oracle Press resource also offers a solid introduction to JavaFX.",:logo_url => "http://ecx.images-amazon.com/images/I/516CL5AVKVL._SX406_BO1,204,203,200_.jpg",:pdf_file_url => "http://iiti.ac.in/people/~tanimad/JavaTheCompleteReference.pdf")

  end

end
