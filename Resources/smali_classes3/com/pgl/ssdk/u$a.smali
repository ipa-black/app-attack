.class final Lcom/pgl/ssdk/u$a;
.super Ljava/lang/Object;
.source "InputInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/u;->a(Landroid/view/MotionEvent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/u$a;->a:Landroid/content/Context;

    iput p2, p0, Lcom/pgl/ssdk/u$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/u$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/u;->a(Landroid/content/Context;)Landroid/hardware/input/InputManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget v1, p0, Lcom/pgl/ssdk/u$a;->b:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/pgl/ssdk/u;->g()V

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/pgl/ssdk/u;->a()I

    .line 9
    invoke-static {}, Lcom/pgl/ssdk/u;->b()I

    const-string v0, "nihc"

    .line 10
    invoke-static {v0}, Lcom/pgl/ssdk/u;->a(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {}, Lcom/pgl/ssdk/u;->c()I

    .line 13
    invoke-static {}, Lcom/pgl/ssdk/u;->d()I

    const-string v0, "vihc"

    .line 14
    invoke-static {v0}, Lcom/pgl/ssdk/u;->a(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {}, Lcom/pgl/ssdk/u;->e()I

    .line 17
    invoke-static {}, Lcom/pgl/ssdk/u;->f()I

    const-string v0, "eihc"

    .line 18
    invoke-static {v0}, Lcom/pgl/ssdk/u;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
