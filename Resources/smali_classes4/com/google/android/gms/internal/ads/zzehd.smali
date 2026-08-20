.class public final synthetic Lcom/google/android/gms/internal/ads/zzehd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbul;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzehd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzehd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehd;->zza:Lcom/google/android/gms/internal/ads/zzehd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcce;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcce;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
