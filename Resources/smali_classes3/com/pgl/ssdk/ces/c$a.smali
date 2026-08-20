.class final Lcom/pgl/ssdk/ces/c$a;
.super Ljava/lang/Object;
.source "PglSSManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/ces/c;->a(Landroid/content/Context;Ljava/lang/String;III)Lcom/pgl/ssdk/ces/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/v;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/v;->a(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
