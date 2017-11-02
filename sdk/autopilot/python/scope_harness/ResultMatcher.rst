.. _sdk_scope_harness_resultmatcher:
scope_harness ResultMatcher
===========================

 *class* ``scope_harness.``\ ``ResultMatcher``\ (*(object)arg1*,
*(str)arg2*)\ ` <#scope_harness.ResultMatcher>`_ 
    Matcher object that holds constraints for matching search result.

     ``art``\ (*(ResultMatcher)arg1*, *(str)arg2*) → ResultMatcher
    :` <#scope_harness.ResultMatcher.art>`_ 
        Set the art to match

     ``attributes``\ (*(ResultMatcher)arg1*, *(object)arg2*) →
    ResultMatcher\ ` <#scope_harness.ResultMatcher.attributes>`_ 

     ``background``\ (*(ResultMatcher)arg1*, *(object)arg2*) →
    ResultMatcher :` <#scope_harness.ResultMatcher.background>`_ 
        Set the background to match

     ``dnd_uri``\ (*(ResultMatcher)arg1*, *(str)arg2*) → ResultMatcher
    :` <#scope_harness.ResultMatcher.dnd_uri>`_ 
        Set the dnd\_uri to match

     ``emblem``\ (*(ResultMatcher)arg1*, *(str)arg2*) → ResultMatcher
    :` <#scope_harness.ResultMatcher.emblem>`_ 
        Set the emblem to match

     ``mascot``\ (*(ResultMatcher)arg1*, *(str)arg2*) → ResultMatcher
    :` <#scope_harness.ResultMatcher.mascot>`_ 
        Set the mascot to match

     ``match``\ (*(ResultMatcher)arg1*, *(Result)arg2*) →
    MatchResult\ ` <#scope_harness.ResultMatcher.match>`_ 
        match( (ResultMatcher)arg1, (MatchResult)arg2, (Result)arg3) ->
        None

     ``properties``\ (*(ResultMatcher)arg1*, *(dict)arg2*) →
    ResultMatcher :` <#scope_harness.ResultMatcher.properties>`_ 
        Set multiple properties to match at once (expects a dictionary
        of names and corresponding values)

     ``property``\ (*(ResultMatcher)arg1*, *(str)arg2*, *(object)arg3*)
    → ResultMatcher :` <#scope_harness.ResultMatcher.property>`_ 
        Set an arbitrary property to match

     ``subtitle``\ (*(ResultMatcher)arg1*, *(str)arg2*) → ResultMatcher
    :` <#scope_harness.ResultMatcher.subtitle>`_ 
        Set the subtitle to match

     ``summary``\ (*(ResultMatcher)arg1*, *(object)arg2*) →
    ResultMatcher :` <#scope_harness.ResultMatcher.summary>`_ 
        Set the summary to match

     ``title``\ (*(ResultMatcher)arg1*, *(str)arg2*) → ResultMatcher
    :` <#scope_harness.ResultMatcher.title>`_ 
        Set the title to match
