package com.yandex.metrica.modules.api;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public interface ExecutorProvider {
    ICommonExecutor getDefaultExecutor();

    ICommonExecutor getSupportIOExecutor();

    Thread getThread(String str);

    Executor getUiExecutor();
}
