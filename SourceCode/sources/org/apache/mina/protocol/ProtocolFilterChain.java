package org.apache.mina.protocol;

import java.util.List;
/* loaded from: classes5.dex */
public interface ProtocolFilterChain {
    void addAfter(String str, String str2, ProtocolFilter protocolFilter);

    void addBefore(String str, String str2, ProtocolFilter protocolFilter);

    void addFirst(String str, ProtocolFilter protocolFilter);

    void addLast(String str, ProtocolFilter protocolFilter);

    void clear();

    ProtocolFilter getChild(String str);

    List getChildren();

    List getChildrenReversed();

    void remove(String str);
}
