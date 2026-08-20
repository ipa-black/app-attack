.class public final Lcom/yandex/metrica/impl/ob/pd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/HostRetryInfoProvider;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/e9;

.field private final b:Lcom/yandex/metrica/impl/ob/qd;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/qd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/pd;->a:Lcom/yandex/metrica/impl/ob/e9;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/pd;->b:Lcom/yandex/metrica/impl/ob/qd;

    return-void
.end method


# virtual methods
.method public getLastAttemptTimeSeconds()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pd;->a:Lcom/yandex/metrica/impl/ob/e9;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pd;->b:Lcom/yandex/metrica/impl/ob/qd;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/e9;->a(Lcom/yandex/metrica/impl/ob/qd;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextSendAttemptNumber()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pd;->a:Lcom/yandex/metrica/impl/ob/e9;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pd;->b:Lcom/yandex/metrica/impl/ob/qd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/e9;->a(Lcom/yandex/metrica/impl/ob/qd;I)I

    move-result v0

    return v0
.end method

.method public saveLastAttemptTimeSeconds(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pd;->a:Lcom/yandex/metrica/impl/ob/e9;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pd;->b:Lcom/yandex/metrica/impl/ob/qd;

    invoke-virtual {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/e9;->b(Lcom/yandex/metrica/impl/ob/qd;J)Lcom/yandex/metrica/impl/ob/e9;

    return-void
.end method

.method public saveNextSendAttemptNumber(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pd;->a:Lcom/yandex/metrica/impl/ob/e9;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/pd;->b:Lcom/yandex/metrica/impl/ob/qd;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/e9;->b(Lcom/yandex/metrica/impl/ob/qd;I)Lcom/yandex/metrica/impl/ob/e9;

    return-void
.end method
