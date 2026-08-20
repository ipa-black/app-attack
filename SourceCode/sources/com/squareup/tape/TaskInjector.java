package com.squareup.tape;

import com.squareup.tape.Task;
/* loaded from: classes3.dex */
public interface TaskInjector<T extends Task> {
    void injectMembers(T t);
}
