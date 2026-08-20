.class Lcom/pgl/ssdk/G$a;
.super Ljava/lang/Object;
.source "MyBaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgl/ssdk/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/G;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/G$a;->a:Lcom/pgl/ssdk/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/G$a;->a:Lcom/pgl/ssdk/G;

    invoke-static {v0}, Lcom/pgl/ssdk/G;->a(Lcom/pgl/ssdk/G;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pgl/ssdk/G$a;->a:Lcom/pgl/ssdk/G;

    invoke-static {v0}, Lcom/pgl/ssdk/G;->b(Lcom/pgl/ssdk/G;)I

    move-result v0

    iget-object v1, p0, Lcom/pgl/ssdk/G$a;->a:Lcom/pgl/ssdk/G;

    invoke-static {v1}, Lcom/pgl/ssdk/G;->d(Lcom/pgl/ssdk/G;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/pgl/ssdk/G$a;->a:Lcom/pgl/ssdk/G;

    invoke-static {v0}, Lcom/pgl/ssdk/G;->c(Lcom/pgl/ssdk/G;)I

    .line 4
    invoke-static {}, Lcom/pgl/ssdk/M;->a()Lcom/pgl/ssdk/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/M;->b()Lcom/pgl/ssdk/Q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
