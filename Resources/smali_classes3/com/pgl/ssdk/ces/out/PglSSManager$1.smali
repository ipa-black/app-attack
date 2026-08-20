.class Lcom/pgl/ssdk/ces/out/PglSSManager$1;
.super Ljava/lang/Object;
.source "PglSSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/ces/out/PglSSManager;->setCustomInfo(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/ces/out/PglSSManager;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/ces/out/PglSSManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/ces/out/PglSSManager$1;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/ces/out/PglSSManager$1;->a:Lcom/pgl/ssdk/ces/out/PglSSManager;

    invoke-static {v0}, Lcom/pgl/ssdk/ces/out/PglSSManager;->a(Lcom/pgl/ssdk/ces/out/PglSSManager;)Lcom/pgl/ssdk/ces/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/c;->b()V

    return-void
.end method
