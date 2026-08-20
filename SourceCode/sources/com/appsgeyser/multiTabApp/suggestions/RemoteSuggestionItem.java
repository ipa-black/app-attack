package com.appsgeyser.multiTabApp.suggestions;
/* loaded from: classes2.dex */
public class RemoteSuggestionItem implements SuggestionItem {
    private String text;

    public RemoteSuggestionItem(String str) {
        this.text = str;
    }

    @Override // com.appsgeyser.multiTabApp.suggestions.SuggestionItem
    public String getAutocompleteText() {
        return this.text;
    }
}
