import 'package:flutter/material.dart';
import 'package:mix_subtitle/features/home/presentation/view/widgets/modal_list_tile.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 130,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: const Color(0xff7e12fe),
        ),
        onPressed: () {
          _showBottomSheet(context);
        },
        child: const Text(
          'Create',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250, // Set height of the sheet
          padding: const EdgeInsets.all(10),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ModalListTile(
                iconData: Icons.download,
                title: 'Import your footage',
                subtitle: 'Add captions to your video',
              ),
              ModalListTile(
                iconData: Icons.videocam,
                title: 'Record a video',
                subtitle: 'Capture With your camera',
              ),
              ModalListTile(
                iconData: Icons.face,
                title: 'Ai creator',
                subtitle: 'Generate Talking Videos',
              ),
            ],
          ),
        );
      },
    );
  }
}
