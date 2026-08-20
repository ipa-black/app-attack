.class public final Lcom/google/android/gms/internal/ads/zzenj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeks;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdxc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdxc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenj;->zza:Lcom/google/android/gms/internal/ads/zzdxc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzekt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfjl;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenj;->zza:Lcom/google/android/gms/internal/ads/zzdxc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdxc;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfkb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzems;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzems;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzekt;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzekt;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdfx;Ljava/lang/String;)V

    return-object v1
.end method
