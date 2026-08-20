.class public Lcom/criteo/publisher/c0/c;
.super Ljava/lang/Object;
.source "LoggingBidLifecycleListener.java"

# interfaces
.implements Lcom/criteo/publisher/c0/a;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/logging/n;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/logging/n;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/criteo/publisher/c0/c;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/c0/c;->a:Lcom/criteo/publisher/logging/g;

    .line 39
    iput-object p1, p0, Lcom/criteo/publisher/c0/c;->b:Lcom/criteo/publisher/logging/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/criteo/publisher/c0/c;->a:Lcom/criteo/publisher/logging/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSdkInitialized"

    invoke-virtual {v0, v2, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/c0/c;->b:Lcom/criteo/publisher/logging/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/logging/n;->a()V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/criteo/publisher/c0/c;->a:Lcom/criteo/publisher/logging/g;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "onBidConsumed: %s"

    invoke-virtual {p1, v0, p2}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/c0/c;->a:Lcom/criteo/publisher/logging/g;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "onCdbCallStarted: %s"

    invoke-virtual {v0, v1, p1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/criteo/publisher/c0/c;->a:Lcom/criteo/publisher/logging/g;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "onCdbCallFinished: %s"

    invoke-virtual {p1, v0, p2}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/criteo/publisher/c0/c;->a:Lcom/criteo/publisher/logging/g;

    const-string v0, "onCdbCallFailed"

    invoke-virtual {p1, v0, p2}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/c0/c;->a:Lcom/criteo/publisher/logging/g;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "onBidCached: %s"

    invoke-virtual {v0, v1, p1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
