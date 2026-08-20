.class Lcom/pgl/ssdk/ces/c$c;
.super Ljava/lang/Object;
.source "PglSSManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/ces/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/ces/c;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/ces/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/ces/c$c;->a:Lcom/pgl/ssdk/ces/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/ces/c$c;->a:Lcom/pgl/ssdk/ces/c;

    iget-object v0, v0, Lcom/pgl/ssdk/ces/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/x;->b(Landroid/content/Context;)V

    return-void
.end method
