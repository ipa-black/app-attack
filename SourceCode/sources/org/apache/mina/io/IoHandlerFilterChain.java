package org.apache.mina.io;

import java.util.List;
/* loaded from: classes4.dex */
public interface IoHandlerFilterChain {
    void addAfter(String str, String str2, IoHandlerFilter ioHandlerFilter);

    void addBefore(String str, String str2, IoHandlerFilter ioHandlerFilter);

    void addFirst(String str, IoHandlerFilter ioHandlerFilter);

    void addLast(String str, IoHandlerFilter ioHandlerFilter);

    void clear();

    IoHandlerFilter getChild(String str);

    List getChildren();

    List getChildrenReversed();

    void remove(String str);
}
