.class public final Lcom/criteo/publisher/logging/m;
.super Ljava/lang/Object;
.source "RemoteLogSendingQueueConfiguration.kt"

# interfaces
.implements Lcom/criteo/publisher/f0/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/f0/a0<",
        "Lcom/criteo/publisher/logging/RemoteLogRecords;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/n0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/g;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/m;->b:Lcom/criteo/publisher/n0/g;

    .line 29
    const-class p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    iput-object p1, p0, Lcom/criteo/publisher/logging/m;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/criteo/publisher/logging/m;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->i()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/criteo/publisher/logging/m;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/criteo/publisher/logging/m;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->m()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/criteo/publisher/logging/m;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildConfigWrapper.remoteLogQueueFilename"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
