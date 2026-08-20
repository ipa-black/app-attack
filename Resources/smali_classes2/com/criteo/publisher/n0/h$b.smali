.class Lcom/criteo/publisher/n0/h$b;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/n0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/n0/h;


# direct methods
.method private constructor <init>(Lcom/criteo/publisher/n0/h;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/criteo/publisher/n0/h$b;->a:Lcom/criteo/publisher/n0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/criteo/publisher/n0/h;Lcom/criteo/publisher/n0/h$a;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/criteo/publisher/n0/h$b;-><init>(Lcom/criteo/publisher/n0/h;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/criteo/publisher/n0/h$b;->a:Lcom/criteo/publisher/n0/h;

    invoke-static {v0}, Lcom/criteo/publisher/n0/h;->a(Lcom/criteo/publisher/n0/h;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 97
    iget-object v0, p0, Lcom/criteo/publisher/n0/h$b;->a:Lcom/criteo/publisher/n0/h;

    invoke-static {v0}, Lcom/criteo/publisher/n0/h;->b(Lcom/criteo/publisher/n0/h;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/n0/h$c;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/h$c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
