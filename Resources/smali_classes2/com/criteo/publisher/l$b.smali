.class Lcom/criteo/publisher/l$b;
.super Ljava/lang/Object;
.source "CriteoBannerEventController.java"

# interfaces
.implements Lcom/criteo/publisher/b0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/l;->a()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/l;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/l;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/criteo/publisher/l$b;->a:Lcom/criteo/publisher/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/criteo/publisher/l$b;->a:Lcom/criteo/publisher/l;

    sget-object v1, Lcom/criteo/publisher/p;->d:Lcom/criteo/publisher/p;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/l;->a(Lcom/criteo/publisher/p;)V

    return-void
.end method
