# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {

  # Template Data
  # =============
  # These are variables that will be accessible via our templates
  # To access one of these within our templates, refer to the FAQ: https://github.com/bevry/docpad/wiki/FAQ

  templateData:

    # Specify some site properties
    site:
      # The production url of our website
      url: "http://aylaamaudruz.com"

      # The default title of our website
      title: "Ayla Amaudruz"

      # The website description (for SEO)
      description: """
        Ayla Amaudruz - Petite Grimpeuse.
        """

      # The website keywords (for SEO) separated by commas
      keywords: """
        escalade, bloc, climbmania, contest
        """

      # The website author's name
      author: "S.Amaudruz"

      # The website author's email
      email: "gautama108@gmail.com"

      # Your company's name
      copyright: "© SamDev 2014"


    # Helper Functions
    # ----------------

    # Get the prepared site/document title
    # Often we would like to specify particular formatting to our page's title
    # we can apply that formatting here
    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
      # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

    # Get the prepared site/document description
    getPreparedDescription: ->
      # if we have a document description, then we should use that, otherwise use the site's description
      @document.description or @site.description

    # Get the prepared site/document keywords
    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      @site.keywords.concat(@document.keywords or []).join(', ')
      
  # Live Collection 
  # ===============
  collections:
    posts: ->
      @getCollection("html").findAllLive({relativeOutDirPath: 'posts'})

  # Plugins 
  # ===============
  plugins:
    associatedfiles:
        # The paths for the associated files.
        associatedFilesPath: 'images'

        # Whether to use relative base paths for the document. This would
        # use associated-files/subfolder/myarticle/image.jpg instead of
        # associated-files/myarticle/image.jpg.
        useRelativeBase: false

}

# Export the DocPad Configuration
module.exports = docpadConfig
