package com.appsgeyser.multiTabApp.suggestions;

import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.server.BaseServerClient;
import java.io.StringReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
/* loaded from: classes2.dex */
public class SuggestionsClient extends BaseServerClient {
    public static final int TAG = 99999;
    private SuggestionsListener listener;

    public SuggestionsClient(MainNavigationActivity mainNavigationActivity) {
        super(mainNavigationActivity);
    }

    public void setListener(SuggestionsListener suggestionsListener) {
        this.listener = suggestionsListener;
    }

    public void getSuggestionsAsync(final String str) {
        if (str == null || str == "") {
            return;
        }
        sendRequestAsync("http://google.com/complete/search?output=toolbar&q=" + URLEncoder.encode(str), Integer.valueOf((int) TAG), new BaseServerClient.OnRequestDoneListener() { // from class: com.appsgeyser.multiTabApp.suggestions.SuggestionsClient.1
            @Override // com.appsgeyser.multiTabApp.server.BaseServerClient.OnRequestDoneListener
            public void onRequestDone(String str2, int i, String str3) {
                ArrayList<RemoteSuggestionItem> arrayList;
                if (i != 99999 || str3 == null) {
                    return;
                }
                try {
                    arrayList = SuggestionsClient.this.tryGetSuggestsFromXml(str3);
                } catch (Exception unused) {
                    arrayList = new ArrayList<>();
                }
                SuggestionsClient.this.listener.onReceiveSuggestions(arrayList, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<RemoteSuggestionItem> tryGetSuggestsFromXml(String str) {
        try {
            SAXParser newSAXParser = SAXParserFactory.newInstance().newSAXParser();
            SuggestionsHandler suggestionsHandler = new SuggestionsHandler();
            newSAXParser.parse(new InputSource(new StringReader(str)), suggestionsHandler);
            return suggestionsHandler.getResult();
        } catch (Exception e2) {
            e2.printStackTrace();
            return new ArrayList<>();
        }
    }
}
