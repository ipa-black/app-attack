.class public Lcom/yandex/metrica/impl/ob/Cc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/Sb;

.field public final b:Landroid/location/LocationManager;

.field public final c:Lcom/yandex/metrica/impl/ob/mc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Sb;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Cc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Cc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Cc;->b:Landroid/location/LocationManager;

    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/Nc;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;Landroid/location/LocationManager;)Lcom/yandex/metrica/impl/ob/Cc;
    .locals 8

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/Cc;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Nc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Nc;->b:Lcom/yandex/metrica/impl/ob/pi;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Nc;->c:Lcom/yandex/metrica/impl/ob/mc;

    move-object v0, v7

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Cc;-><init>(Lcom/yandex/metrica/impl/ob/Sb;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/mc;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V

    return-object v7
.end method
