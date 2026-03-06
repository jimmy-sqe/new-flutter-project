import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:app/navigation/base/base_popup_info_mapper.dart';

class AppPopupInfoMapper extends BasePopupInfoMapper {
  @override
  Widget map(AppPopupInfo appPopupInfo) {
    return appPopupInfo.when(
      confirmDialog: (message, onPressed) => AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => onPressed?.call(),
            child: const Text('OK'),
          ),
        ],
      ),
      errorWithRetryDialog: (message, onRetryPressed) => AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => onRetryPressed?.call(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
