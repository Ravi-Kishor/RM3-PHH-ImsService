.class public interface abstract Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
.super Ljava/lang/Object;
.source "IVoiceCommandManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation build Landroid/annotation/ProductApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;,
        Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Default;
    }
.end annotation


# virtual methods
.method public abstract registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
