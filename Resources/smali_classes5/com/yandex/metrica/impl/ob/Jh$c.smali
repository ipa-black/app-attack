.class Lcom/yandex/metrica/impl/ob/Jh$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Jh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Jh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Jh$c;->a:Lcom/yandex/metrica/impl/ob/Jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Jh$c;->a:Lcom/yandex/metrica/impl/ob/Jh;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Jh;->d(Lcom/yandex/metrica/impl/ob/Jh;)Lcom/yandex/metrica/impl/ob/di;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/Jh;->a(Lcom/yandex/metrica/impl/ob/Jh;Lcom/yandex/metrica/impl/ob/di;)V

    return-void
.end method
