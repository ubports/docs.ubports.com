
       \ Member
`unity::scopes::SearchListenerBase::push </sdk/scopes/cpp/unity.scopes.SearchListenerBase#ac7904ac1f83fe60cddc8f08c6e7d971b>`__
(Filters const &filters,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state)
    Please override the push(Filters& const) method instead. This method
    will be removed from future releases.
       \ Member
`unity::scopes::SearchReply::push </sdk/scopes/cpp/unity.scopes.SearchReply#a121842b4206980360c208a1f5828ef12>`__
(Filters const &filters,
`FilterState </sdk/scopes/cpp/unity.scopes.FilterState/>`__ const
&filter\_state)=0
    Sending filter state back to the UI is deprecated and will be
    removed from future releases. Please use the `push(Filters
    const&) </sdk/scopes/cpp/unity.scopes.SearchReply#abdd099e2e777b739988ce545a8fb3eec>`__
    method instead.

    Returns
        True if the filters were accepted, false otherwise.

