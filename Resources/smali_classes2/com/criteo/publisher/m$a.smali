.class Lcom/criteo/publisher/m$a;
.super Lcom/criteo/publisher/x;
.source "CriteoInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/m;->a(Ljava/util/concurrent/Executor;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/criteo/publisher/m;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/m;Ljava/util/List;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/criteo/publisher/m$a;->d:Lcom/criteo/publisher/m;

    iput-object p2, p0, Lcom/criteo/publisher/m$a;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/criteo/publisher/m$a;->d:Lcom/criteo/publisher/m;

    invoke-static {v0}, Lcom/criteo/publisher/m;->a(Lcom/criteo/publisher/m;)Lcom/criteo/publisher/e;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/m$a;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e;->a(Ljava/util/List;)V

    return-void
.end method
