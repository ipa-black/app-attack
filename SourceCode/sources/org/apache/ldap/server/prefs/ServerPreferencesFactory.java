package org.apache.ldap.server.prefs;

import java.util.prefs.Preferences;
import java.util.prefs.PreferencesFactory;
import org.apache.ldap.common.NotImplementedException;
/* loaded from: classes3.dex */
public class ServerPreferencesFactory implements PreferencesFactory {
    @Override // java.util.prefs.PreferencesFactory
    public Preferences systemRoot() {
        return new ServerSystemPreferences();
    }

    @Override // java.util.prefs.PreferencesFactory
    public Preferences userRoot() {
        throw new NotImplementedException("userRoot() in org.apache.ldap.server.prefs.ServerPreferencesFactory not implemented!");
    }
}
