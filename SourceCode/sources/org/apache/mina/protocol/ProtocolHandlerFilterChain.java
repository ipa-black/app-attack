package org.apache.mina.protocol;

import java.util.List;
/* loaded from: classes5.dex */
public interface ProtocolHandlerFilterChain {
    void addAfter(String str, String str2, ProtocolHandlerFilter protocolHandlerFilter);

    void addBefore(String str, String str2, ProtocolHandlerFilter protocolHandlerFilter);

    void addFirst(String str, ProtocolHandlerFilter protocolHandlerFilter);

    void addLast(String str, ProtocolHandlerFilter protocolHandlerFilter);

    void clear();

    ProtocolHandlerFilter getChild(String str);

    List getChildren();

    List getChildrenReversed();

    void remove(String str);
}
