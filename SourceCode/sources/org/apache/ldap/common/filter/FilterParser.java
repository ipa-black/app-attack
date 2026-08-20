package org.apache.ldap.common.filter;

import java.io.IOException;
import java.text.ParseException;
/* loaded from: classes3.dex */
public interface FilterParser {
    ExprNode parse(String str) throws IOException, ParseException;

    void setFilterParserMonitor(FilterParserMonitor filterParserMonitor);
}
