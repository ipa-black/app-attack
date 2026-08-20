.class public Lcom/appsgeyser/sdk/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DebugLog(Ljava/lang/String;)V
    .locals 1

    .line 12
    const-string v0, "*** AppsgeyserSDK Debug"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static ErrorLog(Ljava/lang/String;)V
    .locals 1

    .line 18
    const-string v0, "AppsgeyserSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static InfoLog(Ljava/lang/String;)V
    .locals 1

    .line 24
    const-string v0, "AppsgeyserSDK Info:"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
