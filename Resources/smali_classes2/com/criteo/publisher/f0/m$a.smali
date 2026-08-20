.class Lcom/criteo/publisher/f0/m$a;
.super Ljava/lang/Object;
.source "FileMetricRepository.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f0/m;->a(Ljava/io/File;)Lcom/criteo/publisher/f0/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/criteo/publisher/f0/d0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/criteo/publisher/f0/m;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f0/m;Ljava/io/File;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/criteo/publisher/f0/m$a;->b:Lcom/criteo/publisher/f0/m;

    iput-object p2, p0, Lcom/criteo/publisher/f0/m$a;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/f0/d0;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/criteo/publisher/f0/m$a;->b:Lcom/criteo/publisher/f0/m;

    invoke-static {v0}, Lcom/criteo/publisher/f0/m;->a(Lcom/criteo/publisher/f0/m;)Lcom/criteo/publisher/f0/o;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/f0/m$a;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/o;->a(Ljava/io/File;)Lcom/criteo/publisher/f0/d0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/m$a;->a()Lcom/criteo/publisher/f0/d0;

    move-result-object v0

    return-object v0
.end method
