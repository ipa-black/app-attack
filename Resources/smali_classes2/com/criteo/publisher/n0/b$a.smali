.class Lcom/criteo/publisher/n0/b$a;
.super Lcom/criteo/publisher/x;
.source "AdvertisingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/n0/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/n0/b;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/n0/b;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/criteo/publisher/n0/b$a;->c:Lcom/criteo/publisher/n0/b;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/n0/b$a;->c:Lcom/criteo/publisher/n0/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b;->b()Ljava/lang/String;

    return-void
.end method
