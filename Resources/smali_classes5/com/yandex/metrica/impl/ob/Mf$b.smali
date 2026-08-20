.class public final Lcom/yandex/metrica/impl/ob/Mf$b;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Mf;->a(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Mf;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Mf;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mf$b;->a:Lcom/yandex/metrica/impl/ob/Mf;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Mf$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Mf$b;->c:[B

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mf$b;->a:Lcom/yandex/metrica/impl/ob/Mf;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Mf;->a(Lcom/yandex/metrica/impl/ob/Mf;)Lcom/yandex/metrica/impl/ob/K0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Mf$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Mf$b;->c:[B

    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/I0;->a(Ljava/lang/String;[B)V

    return-void
.end method
