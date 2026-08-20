.class public final Lcom/criteo/publisher/f0/c0;
.super Ljava/lang/Object;
.source "SendingQueueLogMessage.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/criteo/publisher/f0/c0;

    invoke-direct {v0}, Lcom/criteo/publisher/f0/c0;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Exception;)Lcom/criteo/publisher/logging/e;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const-string v1, "Error when polling element from queue file"

    const-string v2, "onErrorWhenPollingQueueFile"

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/criteo/publisher/logging/e;

    const-string v1, "Error while reading queue file. Recovering by recreating it or using in-memory queue"

    const-string v2, "onRecoveringFromStaleQueueFile"

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/criteo/publisher/logging/e;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method
