.class Lcom/criteo/publisher/k0/b$a;
.super Ljava/lang/Object;
.source "BidRequestSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/k0/b;->a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/h;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/k0/c;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/criteo/publisher/k0/b;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/k0/b;Lcom/criteo/publisher/k0/c;Ljava/util/List;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/criteo/publisher/k0/b$a;->c:Lcom/criteo/publisher/k0/b;

    iput-object p2, p0, Lcom/criteo/publisher/k0/b$a;->a:Lcom/criteo/publisher/k0/c;

    iput-object p3, p0, Lcom/criteo/publisher/k0/b$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/k0/b$a;->a:Lcom/criteo/publisher/k0/c;

    invoke-virtual {v0}, Lcom/criteo/publisher/x;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/criteo/publisher/k0/b$a;->c:Lcom/criteo/publisher/k0/b;

    iget-object v1, p0, Lcom/criteo/publisher/k0/b$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/criteo/publisher/k0/b;->a(Lcom/criteo/publisher/k0/b;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/criteo/publisher/k0/b$a;->c:Lcom/criteo/publisher/k0/b;

    iget-object v2, p0, Lcom/criteo/publisher/k0/b$a;->b:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/criteo/publisher/k0/b;->a(Lcom/criteo/publisher/k0/b;Ljava/util/List;)V

    .line 157
    throw v0
.end method
