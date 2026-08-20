.class public Lio/bidmachine/core/AdapterLogger;
.super Ljava/lang/Object;
.source "AdapterLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lio/bidmachine/core/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-void
.end method
