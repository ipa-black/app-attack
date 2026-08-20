package org.apache.mina.io;

import java.util.List;
/* loaded from: classes4.dex */
public interface IoFilterChain {
    void addAfter(String str, String str2, IoFilter ioFilter);

    void addBefore(String str, String str2, IoFilter ioFilter);

    void addFirst(String str, IoFilter ioFilter);

    void addLast(String str, IoFilter ioFilter);

    void clear();

    IoFilter getChild(String str);

    List getChildren();

    List getChildrenReversed();

    void remove(String str);
}
