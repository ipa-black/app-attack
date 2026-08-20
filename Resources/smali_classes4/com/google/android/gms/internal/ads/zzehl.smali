.class public final Lcom/google/android/gms/internal/ads/zzehl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbum;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzehz;

.field public final zzc:Lorg/json/JSONObject;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzcce;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzehk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehl;->zza:Lcom/google/android/gms/internal/ads/zzbum;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzehz;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcce;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzb:Lcom/google/android/gms/internal/ads/zzehz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzc:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehl;->zzd:Lcom/google/android/gms/internal/ads/zzcce;

    return-void
.end method
