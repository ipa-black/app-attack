.class public final Lcom/criteo/publisher/e0/a$a;
.super Ljava/lang/Object;
.source "AsyncResources.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/e0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/criteo/publisher/e0/a;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/e0/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/criteo/publisher/e0/a$a;->b:Lcom/criteo/publisher/e0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/criteo/publisher/e0/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    invoke-virtual {p1}, Lcom/criteo/publisher/e0/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/criteo/publisher/e0/a$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/e0/a$a;->b:Lcom/criteo/publisher/e0/a;

    invoke-virtual {v0}, Lcom/criteo/publisher/e0/a;->b()V

    :cond_0
    return-void
.end method
