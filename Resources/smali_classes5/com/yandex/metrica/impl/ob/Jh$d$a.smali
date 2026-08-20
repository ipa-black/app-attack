.class Lcom/yandex/metrica/impl/ob/Jh$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Jh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Jh$d;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jh$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$d$a;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Hh;)Lcom/yandex/metrica/impl/ob/Ah;
    .locals 8

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/qh;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$d$a;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Jh$d;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 5
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Jh;->d(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/di;

    move-result-object v4

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$d$a;->a:Lcom/yandex/metrica/impl/ob/Jh$d;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Jh$d;->a:Lcom/yandex/metrica/impl/ob/Jh;

    .line 6
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Jh;->e(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/yh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/yh;->a()Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/qh;-><init>(Ljava/net/Socket;Landroid/net/Uri;Lcom/yandex/metrica/impl/ob/Gh;Lcom/yandex/metrica/impl/ob/di;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Hh;)V

    return-object v7
.end method
