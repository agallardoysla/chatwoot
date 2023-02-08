module MultiSearchableHelpers
  extend ActiveSupport::Concern

  included do
    PgSearch.multisearch_options = {
      using: {
        trigram: {
          word_similarity: true,
          threshold: 0.8
        },
        tsearch: { any_word: true }
      }
    }
  end
end
